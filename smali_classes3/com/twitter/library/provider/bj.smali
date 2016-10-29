.class Lcom/twitter/library/provider/bj;
.super Lcom/twitter/library/provider/bn;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/au;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/au;I[I)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/twitter/library/provider/bj;->b:Lcom/twitter/library/provider/au;

    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/library/provider/bn;-><init>(Lcom/twitter/library/provider/au;I[I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0, p1, p2}, Lcom/twitter/library/provider/bn;->a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 266
    iget-object v0, p0, Lcom/twitter/library/provider/bj;->b:Lcom/twitter/library/provider/au;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/library/provider/au;->f(Lcom/twitter/library/provider/au;Z)Z

    .line 267
    return-void
.end method
