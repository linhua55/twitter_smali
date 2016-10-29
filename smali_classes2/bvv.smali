.class public abstract Lbvv;
.super Lbvs;
.source "Twttr"


# instance fields
.field protected final c:Lcom/twitter/model/av/AVMedia;


# direct methods
.method protected constructor <init>(Lcom/twitter/model/av/AVMedia;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lbvs;-><init>()V

    .line 15
    iput-object p1, p0, Lbvv;->c:Lcom/twitter/model/av/AVMedia;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lbvq;)Z
    .locals 2

    .prologue
    .line 20
    instance-of v0, p1, Lbvu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbvv;->c:Lcom/twitter/model/av/AVMedia;

    check-cast p1, Lbvu;

    iget-object v1, p1, Lbvu;->a:Lcom/twitter/model/av/AVMedia;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
