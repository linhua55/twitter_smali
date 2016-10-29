.class public final Lcom/twitter/library/av/playback/cf;
.super Lcom/twitter/library/av/playback/de;
.source "Twttr"


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twitter/model/core/Tweet;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/twitter/library/av/playback/de;-><init>(Lcom/twitter/model/core/Tweet;)V

    .line 140
    iput-object p2, p0, Lcom/twitter/library/av/playback/cf;->c:Ljava/lang/String;

    .line 141
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/av/playback/cf;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/twitter/library/av/playback/cf;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lbvk;
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/twitter/library/av/playback/cg;

    invoke-direct {v0, p0}, Lcom/twitter/library/av/playback/cg;-><init>(Lcom/twitter/library/av/playback/cf;)V

    return-object v0
.end method
