.class Lcom/twitter/library/provider/fa;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/ea;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/ea;I)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/twitter/library/provider/fa;->b:Lcom/twitter/library/provider/ea;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 368
    const-class v0, Lbex;

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;)V

    .line 369
    return-void
.end method
