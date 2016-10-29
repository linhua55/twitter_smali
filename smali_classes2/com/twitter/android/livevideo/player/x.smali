.class Lcom/twitter/android/livevideo/player/x;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/livevideo/player/w;


# direct methods
.method constructor <init>(Lcom/twitter/android/livevideo/player/w;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/twitter/android/livevideo/player/x;->a:Lcom/twitter/android/livevideo/player/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/x;->a:Lcom/twitter/android/livevideo/player/w;

    invoke-virtual {v0}, Lcom/twitter/android/livevideo/player/w;->d()V

    .line 67
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/x;->a:Lcom/twitter/android/livevideo/player/w;

    invoke-static {v0}, Lcom/twitter/android/livevideo/player/w;->a(Lcom/twitter/android/livevideo/player/w;)Lcom/twitter/android/livevideo/player/v;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/livevideo/player/v;->o()V

    goto :goto_0

    .line 59
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/x;->a:Lcom/twitter/android/livevideo/player/w;

    invoke-static {v0}, Lcom/twitter/android/livevideo/player/w;->a(Lcom/twitter/android/livevideo/player/w;)Lcom/twitter/android/livevideo/player/v;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/livevideo/player/v;->n()V

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x7f130429
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
