public class Compte {
    private double solde;

    public Compte(double soldeInitial) {
        this.solde = soldeInitial;
    }

    public void retirer(double montant) {
        if (montant > solde) {
            throw new IllegalArgumentException("Solde insuffisant");
        }
        solde -= montant;
    }

    public double getSolde() {
        return solde;
    }

    public static void main(String[] args) {
        Compte c = new Compte(100);
        c.retirer(30);
        c.retirer(80);
        System.out.println(c.getSolde());
    }
}
