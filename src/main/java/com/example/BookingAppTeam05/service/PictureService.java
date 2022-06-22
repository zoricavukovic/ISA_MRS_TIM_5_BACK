package com.example.BookingAppTeam05.service;

import com.example.BookingAppTeam05.dto.NewImageDTO;
import com.example.BookingAppTeam05.exception.ItemNotFoundException;
import com.example.BookingAppTeam05.model.Picture;
import com.example.BookingAppTeam05.model.entities.BookingEntity;
import com.example.BookingAppTeam05.repository.PictureRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collectors;

@Service
public class PictureService {
    private PictureRepository pictureRepository;
    public PictureService() throws IOException {

    }

    @Autowired
    public PictureService(PictureRepository pictureRepository) throws IOException {
        this.pictureRepository = pictureRepository;
    }

    public byte[] getPictureDataByName(String name) {
        try {
            String filePath = "./src/main/data/images/" + name;
            return Files.readAllBytes(Paths.get(filePath));
        } catch (Exception e) {
            throw new ItemNotFoundException("Picture not found.");
        }
    }

    public List<String> getBase64ImagesForEntityId(Long id) {
        List<String> pictureNames = findAllPictureNamesForEntityId(id);
        List<String> retVal = new ArrayList<>();
        for (String s : pictureNames) {
            String converted = convertPictureToBase64ByName(s);
            if (converted != null)
                retVal.add(s + ',' + converted);
        }
        return retVal;
    }

    private boolean tryConvertBase64ToImageAndSave(String imageName, String base64) {
        try{
            String path = "./src/main/data/images/" + imageName;
            byte[] image = Base64.getDecoder().decode(base64);
            OutputStream out = new FileOutputStream(path);
            out.write(image);
            out.flush();
            out.close();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public Set<Picture> createPicturesFromDTO(List<NewImageDTO> images) {
        Set<Picture> pictures = new HashSet<>();
        for (NewImageDTO img : images) {
            tryToSaveNewPictureAndAddToOtherPictures(pictures, img);
        }
        return pictures;
    }

    public List<String> findAllPictureNamesForEntityId(Long id) {
        return this.pictureRepository.findAllPictureNamesForEntityId(id);
    }

    public String convertPictureToBase64ByName(String s) {
        byte[] pictureData = getPictureDataByName(s);
        if (pictureData == null)
            return null;
        return Base64.getEncoder().encodeToString(pictureData);
    }

    public boolean tryToSaveNewPictureAndAddToOtherPictures(Set<Picture> otherPictures, NewImageDTO newImage) {
        String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new java.util.Date());
        String newImageName = timeStamp + newImage.getImageName();
        if (tryConvertBase64ToImageAndSave(newImageName, newImage.getDataBase64())) {
            otherPictures.add(new Picture(newImageName));
            return true;
        }
        return false;
    }

    public void deletePictureByName(String picturePath) {
        pictureRepository.deleteByPicturePath(picturePath);
    }

    public void setNewImagesForBookingEntity(BookingEntity bookingEntity, List<NewImageDTO> images) {
        Set<Picture> pictures = new HashSet<>();

        for (Picture currentPicture : bookingEntity.getPictures()) {
            boolean found = false;
            for (NewImageDTO newImage : images) {
                if (newImage.getImageName().equals(currentPicture.getPicturePath())) {
                    found = true;
                    pictures.add(currentPicture);
                    break;
                }
            }
            if (!found) {
                deletePictureByName(currentPicture.getPicturePath());
            }
        }
        for (NewImageDTO newImage : images) {
            boolean found = false;
            for (Picture picture : pictures) {
                if (picture.getPicturePath().equals(newImage.getImageName())) {
                    found = true;
                    break;
                }
            }
            if (!found) {
                tryToSaveNewPictureAndAddToOtherPictures(pictures, newImage);
            }
        }
        bookingEntity.setPictures(pictures);
    }
}
