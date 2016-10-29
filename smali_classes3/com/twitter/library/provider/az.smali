.class Lcom/twitter/library/provider/az;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/au;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/au;I)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/twitter/library/provider/az;->b:Lcom/twitter/library/provider/au;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 464
    const-class v0, Lbcj;

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;)V

    .line 465
    iget-object v0, p0, Lcom/twitter/library/provider/az;->b:Lcom/twitter/library/provider/au;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/library/provider/au;->h(Lcom/twitter/library/provider/au;Z)Z

    .line 466
    return-void
.end method
