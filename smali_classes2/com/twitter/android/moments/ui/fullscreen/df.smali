.class public Lcom/twitter/android/moments/ui/fullscreen/df;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/fullscreen/fr;


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/fullscreen/dh;

.field private final b:Ljava/lang/Long;

.field private final c:Lcom/twitter/model/moments/ah;

.field private final d:Laeo;

.field private e:Lrx/ap;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/dh;Ljava/lang/Long;Lcom/twitter/model/moments/ah;Laeo;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/df;->a:Lcom/twitter/android/moments/ui/fullscreen/dh;

    .line 26
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/df;->b:Ljava/lang/Long;

    .line 27
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/df;->c:Lcom/twitter/model/moments/ah;

    .line 28
    iput-object p4, p0, Lcom/twitter/android/moments/ui/fullscreen/df;->d:Laeo;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/df;)Lcom/twitter/model/moments/ah;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/df;->c:Lcom/twitter/model/moments/ah;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/fullscreen/df;)Lcom/twitter/android/moments/ui/fullscreen/dh;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/df;->a:Lcom/twitter/android/moments/ui/fullscreen/dh;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 33
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/df;->a:Lcom/twitter/android/moments/ui/fullscreen/dh;

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/df;->b:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/df;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/df;->c:Lcom/twitter/model/moments/ah;

    iget-object v0, v0, Lcom/twitter/model/moments/ah;->b:Lcom/twitter/model/moments/ad;

    iget-wide v4, v0, Lcom/twitter/model/moments/ad;->b:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/fullscreen/dh;->a(Z)V

    .line 34
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/df;->a:Lcom/twitter/android/moments/ui/fullscreen/dh;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/df;->c:Lcom/twitter/model/moments/ah;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/dh;->a(Lcom/twitter/model/moments/ah;)V

    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/df;->d:Laeo;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/df;->c:Lcom/twitter/model/moments/ah;

    iget-object v1, v1, Lcom/twitter/model/moments/ah;->c:Lcqt;

    iget-wide v2, v1, Lcqt;->j:J

    invoke-virtual {v0, v2, v3}, Laeo;->a(J)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/dg;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/fullscreen/dg;-><init>(Lcom/twitter/android/moments/ui/fullscreen/df;)V

    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/df;->e:Lrx/ap;

    .line 44
    return-void

    .line 33
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/df;->e:Lrx/ap;

    invoke-static {v0}, Lddg;->a(Lrx/ap;)V

    .line 49
    return-void
.end method
