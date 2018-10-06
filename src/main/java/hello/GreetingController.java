package hello;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.*;
import java.util.concurrent.atomic.AtomicLong;

@RestController
public class GreetingController {

    private static final String template = "Hello, %s!";
    private final AtomicLong counter = new AtomicLong();

    @RequestMapping("/greeting")
    public Greeting greeting(@RequestParam(value="name", defaultValue="World") String name) {
        return new Greeting(counter.incrementAndGet(),
                            String.format(template, name));
    }

    @RequestMapping("/recast_test")
    public RecastReplies recastReplies(@RequestParam(value="name", defaultValue = "World") String name) {
        List<RecastReply> replies = new ArrayList<RecastReply>();
        RecastReply reply = new RecastReply("text","Hello world!");
        replies.add(reply);
        return new RecastReplies( replies ,"Test Conversation");
    }

}
