.class Ltv/periscope/android/ui/broadcast/ak;
.super Ltv/periscope/android/util/m;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltv/periscope/android/util/m",
        "<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ltv/periscope/android/ui/broadcast/aj;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ltv/periscope/android/ui/broadcast/aj;)V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0, p1}, Ltv/periscope/android/util/m;-><init>(Landroid/app/Activity;)V

    .line 419
    iput-object p2, p0, Ltv/periscope/android/ui/broadcast/ak;->a:Ltv/periscope/android/ui/broadcast/aj;

    .line 420
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Message;Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 435
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 451
    :goto_0
    return-void

    .line 437
    :pswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ak;->a:Ltv/periscope/android/ui/broadcast/aj;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/aj;->a()V

    .line 438
    const/16 v0, 0x7b

    sget-wide v2, Ltv/periscope/android/api/Constants;->API_PING_INTERVAL_MILLIS:J

    invoke-virtual {p0, v0, v2, v3}, Ltv/periscope/android/ui/broadcast/ak;->a(IJ)Z

    goto :goto_0

    .line 442
    :pswitch_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ak;->a:Ltv/periscope/android/ui/broadcast/aj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/aj;->a(Z)V

    goto :goto_0

    .line 447
    :pswitch_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ak;->a:Ltv/periscope/android/ui/broadcast/aj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/aj;->a(Z)V

    goto :goto_0

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x7b
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic a(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 414
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2}, Ltv/periscope/android/ui/broadcast/ak;->a(Landroid/os/Message;Landroid/app/Activity;)V

    return-void
.end method

.method public a(Ltv/periscope/android/ui/broadcast/aj;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/ak;->a:Ltv/periscope/android/ui/broadcast/aj;

    .line 424
    return-void
.end method

.method public a(IJ)Z
    .locals 2

    .prologue
    .line 430
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Ltv/periscope/android/ui/broadcast/ak;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method
