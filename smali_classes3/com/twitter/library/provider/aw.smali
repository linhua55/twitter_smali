.class Lcom/twitter/library/provider/aw;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/au;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/au;I)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/twitter/library/provider/aw;->b:Lcom/twitter/library/provider/au;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/twitter/library/provider/aw;->b:Lcom/twitter/library/provider/au;

    invoke-static {v0, p2}, Lcom/twitter/library/provider/au;->a(Lcom/twitter/library/provider/au;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 312
    return-void
.end method
