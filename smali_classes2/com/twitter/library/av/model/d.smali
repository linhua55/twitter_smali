.class Lcom/twitter/library/av/model/d;
.super Lcom/twitter/library/av/model/c;
.source "Twttr"


# instance fields
.field private final a:F


# direct methods
.method constructor <init>(F)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/twitter/library/av/model/c;-><init>()V

    .line 88
    iput p1, p0, Lcom/twitter/library/av/model/d;->a:F

    .line 89
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/twitter/library/av/model/d;->a:F

    return v0
.end method
