.class Lcom/twitter/library/av/playback/cv;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/twitter/library/av/playback/ck;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/ck;IIZZ)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/twitter/library/av/playback/cv;->e:Lcom/twitter/library/av/playback/ck;

    iput p2, p0, Lcom/twitter/library/av/playback/cv;->a:I

    iput p3, p0, Lcom/twitter/library/av/playback/cv;->b:I

    iput-boolean p4, p0, Lcom/twitter/library/av/playback/cv;->c:Z

    iput-boolean p5, p0, Lcom/twitter/library/av/playback/cv;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 58
    iget-object v0, p0, Lcom/twitter/library/av/playback/cv;->e:Lcom/twitter/library/av/playback/ck;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ck;->a()Lcom/twitter/library/av/s;

    move-result-object v0

    iget v1, p0, Lcom/twitter/library/av/playback/cv;->a:I

    iget v2, p0, Lcom/twitter/library/av/playback/cv;->b:I

    iget-boolean v3, p0, Lcom/twitter/library/av/playback/cv;->c:Z

    iget-boolean v4, p0, Lcom/twitter/library/av/playback/cv;->d:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/twitter/library/av/s;->a(IIZZ)V

    .line 59
    return-void
.end method
