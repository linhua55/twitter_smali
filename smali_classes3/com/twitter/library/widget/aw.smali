.class Lcom/twitter/library/widget/aw;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcjo;


# instance fields
.field final synthetic a:Lcom/twitter/library/widget/TweetView;

.field private b:J


# direct methods
.method constructor <init>(Lcom/twitter/library/widget/TweetView;)V
    .locals 2

    .prologue
    .line 253
    iput-object p1, p0, Lcom/twitter/library/widget/aw;->a:Lcom/twitter/library/widget/TweetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twitter/library/widget/aw;->b:J

    return-void
.end method

.method private a()Z
    .locals 6

    .prologue
    .line 278
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 279
    iget-wide v2, p0, Lcom/twitter/library/widget/aw;->b:J

    sub-long v2, v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 280
    iput-wide v0, p0, Lcom/twitter/library/widget/aw;->b:J

    .line 281
    const/4 v0, 0x1

    .line 283
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lclw;)V
    .locals 1

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/twitter/library/widget/aw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/twitter/library/widget/aw;->a:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v0}, Lcom/twitter/library/widget/TweetView;->c()V

    .line 268
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/core/MediaEntity;)V
    .locals 1

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/twitter/library/widget/aw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/twitter/library/widget/aw;->a:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/model/core/MediaEntity;)V

    .line 261
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/media/EditableMedia;)V
    .locals 1

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/twitter/library/widget/aw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/twitter/library/widget/aw;->a:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/model/media/EditableMedia;)V

    .line 275
    :cond_0
    return-void
.end method
