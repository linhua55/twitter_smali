.class Lcom/twitter/library/provider/bf;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/au;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/au;I)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/twitter/library/provider/bf;->b:Lcom/twitter/library/provider/au;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 124
    const-class v0, Lbiq;

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;)V

    .line 125
    iget-object v0, p0, Lcom/twitter/library/provider/bf;->b:Lcom/twitter/library/provider/au;

    invoke-static {v0, v1}, Lcom/twitter/library/provider/au;->c(Lcom/twitter/library/provider/au;Z)Z

    .line 126
    iget-object v0, p0, Lcom/twitter/library/provider/bf;->b:Lcom/twitter/library/provider/au;

    invoke-static {v0, v1}, Lcom/twitter/library/provider/au;->b(Lcom/twitter/library/provider/au;Z)Z

    .line 127
    return-void
.end method
