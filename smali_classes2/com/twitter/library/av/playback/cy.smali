.class Lcom/twitter/library/av/playback/cy;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/twitter/library/av/playback/ck;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/ck;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/twitter/library/av/playback/cy;->c:Lcom/twitter/library/av/playback/ck;

    iput p2, p0, Lcom/twitter/library/av/playback/cy;->a:I

    iput-object p3, p0, Lcom/twitter/library/av/playback/cy;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/twitter/library/av/playback/cy;->c:Lcom/twitter/library/av/playback/ck;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ck;->a()Lcom/twitter/library/av/s;

    move-result-object v0

    iget v1, p0, Lcom/twitter/library/av/playback/cy;->a:I

    iget-object v2, p0, Lcom/twitter/library/av/playback/cy;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/twitter/library/av/s;->a(ILjava/lang/String;)V

    .line 89
    return-void
.end method
