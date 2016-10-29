.class Lcom/twitter/library/provider/bn;
.super Lbao;
.source "Twttr"


# instance fields
.field private final b:[I

.field final synthetic c:Lcom/twitter/library/provider/au;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/au;I[I)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/twitter/library/provider/bn;->c:Lcom/twitter/library/provider/au;

    .line 652
    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    .line 653
    iput-object p3, p0, Lcom/twitter/library/provider/bn;->b:[I

    .line 654
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 658
    iget-object v0, p0, Lcom/twitter/library/provider/bn;->c:Lcom/twitter/library/provider/au;

    iget-object v1, p0, Lcom/twitter/library/provider/bn;->c:Lcom/twitter/library/provider/au;

    invoke-static {v1}, Lcom/twitter/library/provider/au;->e(Lcom/twitter/library/provider/au;)I

    move-result v1

    iget-object v2, p0, Lcom/twitter/library/provider/bn;->b:[I

    invoke-static {v1, v2}, Lcso;->a(I[I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/twitter/library/provider/au;->a(Lcom/twitter/library/provider/au;I)I

    .line 659
    iget-object v0, p0, Lcom/twitter/library/provider/bn;->c:Lcom/twitter/library/provider/au;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/library/provider/au;->a(Lcom/twitter/library/provider/au;Z)Z

    .line 660
    return-void
.end method
