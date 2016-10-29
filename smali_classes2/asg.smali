.class Lasg;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lasd;


# direct methods
.method constructor <init>(Lasd;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lasg;->a:Lasd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 39
    iget-object v0, p0, Lasg;->a:Lasd;

    invoke-static {v0, p1}, Lasd;->a(Lasd;Landroid/media/MediaPlayer;)V

    .line 40
    iget-object v0, p0, Lasg;->a:Lasd;

    invoke-static {v0}, Lasd;->b(Lasd;)I

    .line 41
    return-void
.end method
