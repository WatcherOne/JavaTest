//package com.watcher.controller;
//
//import com.watcher.service.impl.MessageService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.bind.annotation.RestController;
//import org.springframework.web.context.request.async.DeferredResult;
//
//import javax.annotation.Resource;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//@RestController
//@RequestMapping("/")
//public class MessageSource {
//
////    @Resource(name = "messageService")
//    @Autowired
//    private MessageService messageService;
//
//    @ResponseBody
//    @RequestMapping(value = "/getMsg", produces = "text/event-stream;charset=UTF-8")
//    DeferredResult<String> getMsg(HttpServletResponse response) throws IOException {
//        response.setContentType("text/evemt-stream");
//        response.setCharacterEncoding("UTF-8");
//        response.setStatus(200);
//        messageService.removeErrorResponse();
//        messageService.getListRes().add(response);
//        if (!response.getWriter().checkError()) {
//            response.getWriter().write("data:hello\n\n");
//            response.getWriter().flush();
//        }
//        DeferredResult<String> df = new DeferredResult<String>(60000L);
//        return df;
//    }
//}
