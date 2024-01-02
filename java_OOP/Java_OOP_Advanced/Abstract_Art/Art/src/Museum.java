import java.util.ArrayList;

public class Museum {
	private static ArrayList<Art> museum = new ArrayList<Art>();

	public static void main(String[] args) {
		
		Painting painting1 = new Painting("Oil");
		Painting painting2 = new Painting("Watercolor");
		Painting painting3 = new Painting("Acrylic");
		Sculpture sculpture1 = new Sculpture("Marble");
		Sculpture sculpture2 = new Sculpture("Bronze");
		museum.add(painting1);
		museum.add(painting2);
		museum.add(painting3);
		museum.add(sculpture1);
		museum.add(sculpture2);
		
		for(Art piece : museum) {
			System.out.println("This is art piece number "+ museum.indexOf(piece)+":");
			piece.viewArt();
			System.out.println("-------------------\n");
			
		}
		
	}

}
