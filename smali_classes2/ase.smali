.class Lase;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lasd;


# direct methods
.method constructor <init>(Lasd;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lase;->a:Lasd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lase;->a:Lasd;

    invoke-static {v0, p1}, Lasd;->a(Lasd;Landroid/media/MediaPlayer;)V

    .line 25
    iget-object v0, p0, Lase;->a:Lasd;

    invoke-static {v0}, Lasd;->a(Lasd;)Lasc;

    move-result-object v0

    invoke-interface {v0}, Lasc;->e()V

    .line 26
    return-void
.end method
