.class public Lcom/twitter/library/av/playback/ch;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/library/av/playback/ch;->b:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/twitter/model/av/AVMediaPlaylist;Lcom/twitter/library/av/e;J)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 28
    iget-object v0, p0, Lcom/twitter/library/av/playback/ch;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 29
    invoke-virtual {p2}, Lcom/twitter/model/av/AVMediaPlaylist;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/av/playback/ch;->a:Ljava/lang/String;

    .line 32
    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/twitter/library/av/playback/ch;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/twitter/library/av/playback/ch;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/twitter/library/av/e;->c(Ljava/lang/String;)Lcom/twitter/library/av/e;

    .line 37
    :cond_1
    if-nez p1, :cond_2

    .line 68
    :goto_0
    return-void

    .line 41
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 43
    :pswitch_0
    iput-boolean v1, p0, Lcom/twitter/library/av/playback/ch;->b:Z

    .line 44
    iput-wide p4, p0, Lcom/twitter/library/av/playback/ch;->c:J

    goto :goto_0

    .line 41
    :sswitch_0
    const-string/jumbo v2, "replay"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "show"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "playback_start"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v2, "playback_complete"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    .line 48
    :pswitch_1
    iput-wide p4, p0, Lcom/twitter/library/av/playback/ch;->c:J

    goto :goto_0

    .line 52
    :pswitch_2
    iget-wide v0, p0, Lcom/twitter/library/av/playback/ch;->c:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    .line 53
    iget-wide v0, p0, Lcom/twitter/library/av/playback/ch;->c:J

    sub-long v0, p4, v0

    .line 54
    iget-boolean v2, p0, Lcom/twitter/library/av/playback/ch;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/twitter/library/av/e;->a(Ljava/lang/Boolean;)Lcom/twitter/library/av/e;

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/twitter/library/av/e;->a(Ljava/lang/Long;)Lcom/twitter/library/av/e;

    .line 57
    :cond_4
    iput-wide v4, p0, Lcom/twitter/library/av/playback/ch;->c:J

    goto :goto_0

    .line 61
    :pswitch_3
    iput-wide p4, p0, Lcom/twitter/library/av/playback/ch;->c:J

    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b3b819 -> :sswitch_0
        0x35dafd -> :sswitch_1
        0xb183add -> :sswitch_3
        0x5db8bd3e -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
