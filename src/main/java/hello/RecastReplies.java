package hello;

import java.util.*;

public class RecastReplies {
    private final List<RecastReply> replies ; //= new ArrayList<RecastReply>();
    private final String conversation;
    public RecastReplies(List<RecastReply> replies, String conversation) {
        this.replies = replies;
        this.conversation = conversation;
    }

    public List<RecastReply> getReplies() {
        return replies;
    }

    public String getConversation() {
        return conversation;
    }
}
