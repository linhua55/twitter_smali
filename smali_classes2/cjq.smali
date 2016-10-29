.class Lcjq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/media/widget/aa;


# instance fields
.field final synthetic a:Lcjp;


# direct methods
.method constructor <init>(Lcjp;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcjq;->a:Lcjp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/media/widget/TweetMediaView;Lclw;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcjq;->a:Lcjp;

    invoke-static {v0}, Lcjp;->a(Lcjp;)Lcjo;

    move-result-object v0

    invoke-interface {v0, p2}, Lcjo;->a(Lclw;)V

    .line 66
    return-void
.end method

.method public a(Lcom/twitter/library/media/widget/TweetMediaView;Lcom/twitter/model/core/MediaEntity;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcjq;->a:Lcjp;

    invoke-static {v0}, Lcjp;->a(Lcjp;)Lcjo;

    move-result-object v0

    invoke-interface {v0, p2}, Lcjo;->a(Lcom/twitter/model/core/MediaEntity;)V

    .line 71
    return-void
.end method

.method public a(Lcom/twitter/library/media/widget/TweetMediaView;Lcom/twitter/model/media/EditableMedia;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcjq;->a:Lcjp;

    invoke-static {v0}, Lcjp;->a(Lcjp;)Lcjo;

    move-result-object v0

    invoke-interface {v0, p2}, Lcjo;->a(Lcom/twitter/model/media/EditableMedia;)V

    .line 76
    return-void
.end method
