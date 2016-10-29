.class Lcom/twitter/library/provider/w;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/v;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/v;I)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/twitter/library/provider/w;->b:Lcom/twitter/library/provider/v;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/library/provider/w;->b:Lcom/twitter/library/provider/v;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/library/provider/v;->a(Lcom/twitter/library/provider/v;Z)Z

    .line 41
    return-void
.end method
