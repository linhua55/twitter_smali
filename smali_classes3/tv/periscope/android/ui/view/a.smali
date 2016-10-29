.class final Ltv/periscope/android/ui/view/a;
.super Ltv/periscope/android/util/q;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltv/periscope/android/util/q",
        "<",
        "Ltv/periscope/android/player/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/view/LocalTimeView;

.field private final b:Ljava/text/DateFormat;

.field private final c:J


# virtual methods
.method protected bridge synthetic a(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 82
    check-cast p2, Ltv/periscope/android/player/e;

    invoke-virtual {p0, p1, p2}, Ltv/periscope/android/ui/view/a;->a(Landroid/os/Message;Ltv/periscope/android/player/e;)V

    return-void
.end method

.method protected a(Landroid/os/Message;Ltv/periscope/android/player/e;)V
    .locals 6

    .prologue
    .line 95
    iget-wide v0, p0, Ltv/periscope/android/ui/view/a;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Ltv/periscope/android/ui/view/a;->a:Ltv/periscope/android/ui/view/LocalTimeView;

    invoke-static {v0}, Ltv/periscope/android/ui/view/LocalTimeView;->a(Ltv/periscope/android/ui/view/LocalTimeView;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 100
    :goto_0
    iget-object v0, p0, Ltv/periscope/android/ui/view/a;->a:Ltv/periscope/android/ui/view/LocalTimeView;

    iget-object v1, p0, Ltv/periscope/android/ui/view/a;->b:Ljava/text/DateFormat;

    iget-object v2, p0, Ltv/periscope/android/ui/view/a;->a:Ltv/periscope/android/ui/view/LocalTimeView;

    invoke-static {v2}, Ltv/periscope/android/ui/view/LocalTimeView;->a(Ltv/periscope/android/ui/view/LocalTimeView;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/view/LocalTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const/4 v0, 0x0

    iget-object v1, p0, Ltv/periscope/android/ui/view/a;->a:Ltv/periscope/android/ui/view/LocalTimeView;

    invoke-static {v1}, Ltv/periscope/android/ui/view/LocalTimeView;->a(Ltv/periscope/android/ui/view/LocalTimeView;)Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Ltv/periscope/android/ui/view/a;->sendEmptyMessageDelayed(IJ)Z

    .line 103
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/view/a;->a:Ltv/periscope/android/ui/view/LocalTimeView;

    invoke-static {v0}, Ltv/periscope/android/ui/view/LocalTimeView;->a(Ltv/periscope/android/ui/view/LocalTimeView;)Ljava/util/Calendar;

    move-result-object v0

    iget-wide v2, p0, Ltv/periscope/android/ui/view/a;->c:J

    invoke-interface {p2}, Ltv/periscope/android/player/e;->d()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method
