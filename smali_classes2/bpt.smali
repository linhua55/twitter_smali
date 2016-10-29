.class public Lbpt;
.super Lcom/twitter/library/service/c;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/model/av/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/twitter/library/service/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/io/InputStream;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    .line 28
    :goto_0
    return-void

    .line 27
    :cond_0
    const-class v0, Lcom/twitter/model/av/m;

    invoke-static {p2, v0}, Lcom/twitter/model/json/common/g;->a(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/m;

    iput-object v0, p0, Lbpt;->a:Lcom/twitter/model/av/m;

    goto :goto_0
.end method

.method public a(Lcom/twitter/internal/network/k;)V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public b()Lcom/twitter/model/av/m;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lbpt;->a:Lcom/twitter/model/av/m;

    return-object v0
.end method
