package model;

public class Article {

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> dev
	private int IdArticle;
	private String NomArticle;
	private String Description;
	private int Prix;
	private String NomImage;
	private String Categorie;

	public Article() {
		super();
	}

	public Article(int IdArticle, String NomArticle, String Description, int Prix, String NomImage, String Categorie) {
		super();
		this.IdArticle = IdArticle;
		this.NomArticle = NomArticle;
		this.Description = Description;
		this.Prix = Prix;
		this.NomImage = NomImage;
		this.Categorie = Categorie;
	}

	public int getIdArticle() {
		return IdArticle;
	}

	public String getNomArticle() {
		return NomArticle;
	}

	public String getDescription() {
		return Description;
	}

	public int getPrix() {
		return Prix;
	}

	public String getNomImage() {
		return NomImage;
	}

	public String getCategorie() {
		return Categorie;
	}

	@Override
	public String toString() {
		return "Article [IdArticle=" + IdArticle + ", NomArticle=" + NomArticle + ", Description=" + Description
				+ ", Prix=" + Prix + ", NomImage=" + NomImage + ", Categorie=" + Categorie + "]";
	}
}
<<<<<<< HEAD
=======
    private int IdArticle;
    private String NomArticle;
    private String Description;
    private int Prix;
    private String NomImage;
    private String Categorie;

    public Article(int IdArticle, String NomArticle, String Description, int Prix, String NomImage, String Categorie) {
        super();
        this.IdArticle = IdArticle;
        this.NomArticle = NomArticle;
        this.Description = Description;
        this.Prix = Prix;
        this.NomImage = NomImage;
        this.Categorie = Categorie;
    }

    public int getIdArticle() {
        return IdArticle;
    }

    public String getNomArticle() {
        return NomArticle;
    }

    public String getDescription() {
        return Description;
    }

    public int getPrix() {
        return Prix;
    }

    public String getNomImage() {
        return NomImage;
    }

    public String getCategorie() {
        return Categorie;
    }

    @Override
    public String toString() {
        return "Article [IdArticle=" + IdArticle + ", NomArticle=" + NomArticle + ", Description=" + Description
                + ", Prix=" + Prix + ", NomImage=" + NomImage + ", Categorie=" + Categorie + "]";
    }
}
>>>>>>> 42921a74435ebcb0bd873c7d8991361bd5f2a70b
=======
>>>>>>> dev
