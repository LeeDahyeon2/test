package com.EazyHome.www.ACommand;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.EazyHome.www.Dao.ADao;
import com.EazyHome.www.Dto.Item;

public class AAdditemGoCommand implements ACommand {

   @Override
   public String execute(Model model) {
      System.out.println("hi");
      Map<String, Object>map = model.asMap();
      MultipartHttpServletRequest request = (MultipartHttpServletRequest)map.get("request");
      ServletContext servletContext = (ServletContext)map.get("servletContext");
      String saveFile = servletContext.getRealPath("/resources/upload/");
      MultipartFile itemFile = request.getFile("itemFile");
      System.out.println(saveFile+itemFile);
      File file = new File(saveFile+itemFile.getOriginalFilename());
      try {
         System.out.println(1);
         itemFile.transferTo(file);
         System.out.println(2);
      } catch (IllegalStateException e) {
         System.out.println(3);
         // TODO Auto-generated catch block
         e.printStackTrace();
      } catch (IOException e) {
         System.out.println(4);
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      
      Item itembean = new Item();
      ADao dao = new ADao();
      
      itembean.setItemCode(request.getParameter("itemCode"));
      itembean.setItemName(request.getParameter("itemName"));
      itembean.setPrice(Integer.parseInt(request.getParameter("price")));
      itembean.setStock(Integer.parseInt(request.getParameter("stock")));
      itembean.setItemInfo(request.getParameter("itemInfo"));
      itembean.setItemFile(itemFile.getOriginalFilename());
      
      dao.addItem(itembean);
      
//      String realFolder="";
//         String saveFolder="itemupload";
//      
//         int fileSize=5*1024*1024;
//         
//         realFolder=request.getRealPath(saveFolder);
//      try {
//         
//         MultipartRequest multi=null;
//            
//            multi=new MultipartRequest(request,
//                  realFolder,
//                  fileSize,
//                  "euc-kr",
//                  new DefaultFileRenamePolicy());
//
//         itembean.setItemCode(multi.getParameter("itemCode"));
//         itembean.setItemName(multi.getParameter("itemName"));
//         itembean.setPrice(Integer.parseInt(multi.getParameter("price")));
//         itembean.setStock(Integer.parseInt(multi.getParameter("stock")));
//         itembean.setItemInfo(multi.getParameter("itemInfo"));
//         itembean.setItemFile(multi.getFilesystemName((String)multi.getFileNames().nextElement()));
//         
//         dao.addItem(itembean);
//      }
//      catch(Exception ex){
//            System.out.println("excep");
//         
//         ex.printStackTrace();
//         }
      return "redirect:./itemList";
   }

}