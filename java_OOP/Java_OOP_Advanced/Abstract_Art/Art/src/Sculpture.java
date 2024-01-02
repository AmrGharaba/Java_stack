
public class Sculpture extends Art {
	private String material;
	public Sculpture(String material) {
		this.material = material;
		this.author = "amr";
		this.description = "my sculpure";
		this.title = "my art";
	}

	@Override
	public void viewArt() {
		System.out.print("Material : "+this.material+"\n");
		System.out.print("Auther : "+this.author+"\n");
		System.out.print("Piece Title : "+this.title+"\n");
		System.out.print("Description : "+this.description+"\n");
	}


}
