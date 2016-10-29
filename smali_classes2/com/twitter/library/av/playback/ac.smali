.class public Lcom/twitter/library/av/playback/ac;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/model/av/AVMedia;

.field public final b:Lbvr;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/twitter/library/av/playback/ab;

.field public final e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/twitter/model/av/AVMedia;Lbvr;Landroid/content/Context;Lcom/twitter/library/av/playback/ab;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/twitter/library/av/playback/ac;->a:Lcom/twitter/model/av/AVMedia;

    .line 25
    iput-object p2, p0, Lcom/twitter/library/av/playback/ac;->b:Lbvr;

    .line 26
    iput-object p3, p0, Lcom/twitter/library/av/playback/ac;->c:Landroid/content/Context;

    .line 27
    iput-object p4, p0, Lcom/twitter/library/av/playback/ac;->d:Lcom/twitter/library/av/playback/ab;

    .line 28
    iput-object p5, p0, Lcom/twitter/library/av/playback/ac;->e:Landroid/os/Handler;

    .line 29
    return-void
.end method
