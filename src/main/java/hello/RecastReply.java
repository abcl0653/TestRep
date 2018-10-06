package hello;
import java.lang.*;

public class RecastReply {

	private final String type;
	private final String content;

	public RecastReply(String type,String content){
	    this.type = type;
	    this.content = content;
    }

    public String getType() {
        return type;
    }
    public  String getContent() {
	    return content;
    }
}