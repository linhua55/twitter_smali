.class Lcom/twitter/android/moments/ui/fullscreen/ae;
.super Lcom/twitter/library/av/u;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/video/b;

.field final synthetic b:Lcom/twitter/model/moments/viewmodels/ac;

.field final synthetic c:Lcom/twitter/android/moments/ui/fullscreen/ab;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/ab;Lcom/twitter/android/moments/ui/video/b;Lcom/twitter/model/moments/viewmodels/ac;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ae;->c:Lcom/twitter/android/moments/ui/fullscreen/ab;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/ae;->a:Lcom/twitter/android/moments/ui/video/b;

    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/ae;->b:Lcom/twitter/model/moments/viewmodels/ac;

    invoke-direct {p0}, Lcom/twitter/library/av/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 131
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/af;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ae;->b:Lcom/twitter/model/moments/viewmodels/ac;

    sget-object v2, Lcom/twitter/android/av/audio/AudioCardError;->h:Lcom/twitter/android/av/audio/AudioCardError;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/af;-><init>(Lcom/twitter/model/moments/viewmodels/ac;Lcom/twitter/android/av/audio/AudioCardError;)V

    .line 132
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ae;->c:Lcom/twitter/android/moments/ui/fullscreen/ab;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/ab;->e(Lcom/twitter/android/moments/ui/fullscreen/ab;)Lcom/twitter/util/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/util/x;->a(Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ae;->c:Lcom/twitter/android/moments/ui/fullscreen/ab;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/ab;->d(Lcom/twitter/android/moments/ui/fullscreen/ab;)Lcom/twitter/util/x;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/ah;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/ae;->a:Lcom/twitter/android/moments/ui/video/b;

    .line 126
    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/video/b;->f()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/av/playback/AVPlayer;->F()Lcom/twitter/model/av/AVMedia;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/ae;->b:Lcom/twitter/model/moments/viewmodels/ac;

    invoke-direct {v1, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/ah;-><init>(Lcom/twitter/model/av/AVMedia;Lcom/twitter/model/moments/viewmodels/ac;)V

    .line 125
    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->a(Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public a(Lcom/twitter/model/av/c;)V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/af;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ae;->b:Lcom/twitter/model/moments/viewmodels/ac;

    .line 138
    invoke-static {p1}, Lcom/twitter/android/av/audio/AudioCardError;->a(Lcom/twitter/model/av/c;)Lcom/twitter/android/av/audio/AudioCardError;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/af;-><init>(Lcom/twitter/model/moments/viewmodels/ac;Lcom/twitter/android/av/audio/AudioCardError;)V

    .line 139
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ae;->c:Lcom/twitter/android/moments/ui/fullscreen/ab;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/ab;->e(Lcom/twitter/android/moments/ui/fullscreen/ab;)Lcom/twitter/util/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/util/x;->a(Ljava/lang/Object;)V

    .line 140
    return-void
.end method
