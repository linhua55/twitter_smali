.class Lcom/twitter/library/provider/eo;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/ea;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/ea;I)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/twitter/library/provider/eo;->b:Lcom/twitter/library/provider/ea;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 264
    const-class v0, Lbhu;

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;)V

    .line 265
    const-class v0, Lbhs;

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;)V

    .line 266
    const-class v0, Lbia;

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;)V

    .line 267
    const-class v0, Lbie;

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;)V

    .line 268
    return-void
.end method
