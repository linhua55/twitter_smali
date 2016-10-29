.class public interface abstract Lcom/twitter/library/av/control/h;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final u:Lcom/twitter/library/av/control/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/twitter/library/av/control/i;

    invoke-direct {v0}, Lcom/twitter/library/av/control/i;-><init>()V

    sput-object v0, Lcom/twitter/library/av/control/h;->u:Lcom/twitter/library/av/control/h;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Landroid/content/Context;Lcom/twitter/library/av/ar;)V
.end method

.method public abstract a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V
.end method

.method public abstract a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V
.end method

.method public abstract a(Lcom/twitter/library/av/playback/bl;)V
.end method

.method public abstract a(Lcom/twitter/model/av/AVMedia;)V
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a_(Z)V
.end method

.method public abstract b()V
.end method

.method public abstract b_(Z)V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()Z
.end method

.method public abstract g()V
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method

.method public abstract j()V
.end method

.method public abstract l()V
.end method

.method public abstract layout(IIII)V
.end method
