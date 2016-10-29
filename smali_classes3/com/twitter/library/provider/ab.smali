.class Lcom/twitter/library/provider/ab;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/v;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/v;I)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/twitter/library/provider/ab;->b:Lcom/twitter/library/provider/v;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/twitter/library/provider/ab;->b:Lcom/twitter/library/provider/v;

    invoke-static {v0}, Lcom/twitter/library/provider/v;->a(Lcom/twitter/library/provider/v;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-static {p2}, Lcom/twitter/library/provider/v;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 205
    :cond_0
    return-void
.end method
