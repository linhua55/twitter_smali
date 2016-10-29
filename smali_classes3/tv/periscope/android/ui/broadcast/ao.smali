.class Ltv/periscope/android/ui/broadcast/ao;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/broadcast/am;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/am;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/ao;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    .prologue
    .line 210
    packed-switch p1, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 213
    :pswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ao;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/am;->i(Ltv/periscope/android/ui/broadcast/am;)Ltv/periscope/android/util/a;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ao;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/am;->h(Ltv/periscope/android/ui/broadcast/am;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ao;->a:Ltv/periscope/android/ui/broadcast/am;

    iget-object v2, v2, Ltv/periscope/android/ui/broadcast/am;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/util/a;->b(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 214
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ao;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/am;->j(Ltv/periscope/android/ui/broadcast/am;)V

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
