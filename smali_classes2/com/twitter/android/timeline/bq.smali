.class public abstract Lcom/twitter/android/timeline/bq;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ITEM:",
        "Lcom/twitter/android/timeline/bp;",
        "B:",
        "Lcom/twitter/android/timeline/bq",
        "<TITEM;TB;>;>",
        "Lcom/twitter/util/object/h",
        "<TITEM;>;"
    }
.end annotation


# instance fields
.field private final a:J

.field private b:Lcom/twitter/model/timeline/al;

.field private c:Lcom/twitter/android/timeline/bj;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 129
    iput-wide p1, p0, Lcom/twitter/android/timeline/bq;->a:J

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/timeline/bq;)Lcom/twitter/android/timeline/bj;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/android/timeline/bq;->c:Lcom/twitter/android/timeline/bj;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/timeline/bq;)J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/twitter/android/timeline/bq;->a:J

    return-wide v0
.end method

.method static synthetic c(Lcom/twitter/android/timeline/bq;)Lcom/twitter/model/timeline/al;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/android/timeline/bq;->b:Lcom/twitter/model/timeline/al;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/android/timeline/bj;)Lcom/twitter/android/timeline/bq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/timeline/bj;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 140
    iput-object p1, p0, Lcom/twitter/android/timeline/bq;->c:Lcom/twitter/android/timeline/bj;

    .line 141
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/bq;

    return-object v0
.end method

.method public a(Lcom/twitter/model/timeline/al;)Lcom/twitter/android/timeline/bq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/timeline/al;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 134
    iput-object p1, p0, Lcom/twitter/android/timeline/bq;->b:Lcom/twitter/model/timeline/al;

    .line 135
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/bq;

    return-object v0
.end method
