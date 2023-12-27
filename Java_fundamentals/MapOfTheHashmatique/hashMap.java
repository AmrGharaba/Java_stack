import java.util.HashMap;
import java.util.Set;
public class hashMap {
    public static void main(String[] args) {
        HashMap<String, String> trackList = new HashMap<String, String>();
        trackList.put("track1", "song1 lyrics");
        trackList.put("track2", "song2 lyrics");
        trackList.put("track3", "song3 lyrics");
        trackList.put("track4", "song4 lyrics");

        String track = trackList.get("track1");
        System.out.println(track);
        Set<String> keys = trackList.keySet();
        for(String key : keys){
            System.out.println(key+trackList.get(key));

        }



















        
    }
}