.class Lcom/twitter/library/provider/ay;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/au;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/au;I)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/twitter/library/provider/ay;->b:Lcom/twitter/library/provider/au;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 458
    const-class v0, Lbbv;

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;)V

    .line 459
    return-void
.end method
