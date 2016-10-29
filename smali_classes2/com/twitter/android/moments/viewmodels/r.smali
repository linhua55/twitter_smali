.class public Lcom/twitter/android/moments/viewmodels/r;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/c",
        "<",
        "Lcom/twitter/model/moments/viewmodels/MomentPage;",
        "Lcom/twitter/android/moments/viewmodels/q;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/util/object/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            "Lcom/twitter/media/request/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/util/object/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            "Lcom/twitter/util/math/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/util/object/c;Lcom/twitter/util/object/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            "Lcom/twitter/media/request/b;",
            ">;",
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            "Lcom/twitter/util/math/Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/twitter/android/moments/viewmodels/r;->a:Lcom/twitter/util/object/c;

    .line 50
    iput-object p2, p0, Lcom/twitter/android/moments/viewmodels/r;->b:Lcom/twitter/util/object/c;

    .line 51
    return-void
.end method

.method public static a()Lcom/twitter/android/moments/viewmodels/r;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/twitter/android/moments/viewmodels/r;

    new-instance v1, Lcom/twitter/android/moments/viewmodels/s;

    invoke-direct {v1}, Lcom/twitter/android/moments/viewmodels/s;-><init>()V

    new-instance v2, Lcom/twitter/android/moments/viewmodels/t;

    invoke-direct {v2}, Lcom/twitter/android/moments/viewmodels/t;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/moments/viewmodels/r;-><init>(Lcom/twitter/util/object/c;Lcom/twitter/util/object/c;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/android/moments/viewmodels/q;
    .locals 3

    .prologue
    .line 57
    instance-of v0, p1, Lcom/twitter/model/moments/viewmodels/aa;

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/twitter/android/moments/viewmodels/an;

    check-cast p1, Lcom/twitter/model/moments/viewmodels/aa;

    invoke-direct {v0, p1}, Lcom/twitter/android/moments/viewmodels/an;-><init>(Lcom/twitter/model/moments/viewmodels/aa;)V

    .line 70
    :goto_0
    return-object v0

    .line 59
    :cond_0
    instance-of v0, p1, Lcom/twitter/model/moments/viewmodels/q;

    if-eqz v0, :cond_1

    .line 60
    new-instance v0, Lcom/twitter/android/moments/viewmodels/ak;

    check-cast p1, Lcom/twitter/model/moments/viewmodels/q;

    invoke-direct {v0, p1}, Lcom/twitter/android/moments/viewmodels/ak;-><init>(Lcom/twitter/model/moments/viewmodels/q;)V

    goto :goto_0

    .line 61
    :cond_1
    instance-of v0, p1, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;

    if-eqz v0, :cond_2

    .line 62
    new-instance v0, Lcom/twitter/android/moments/viewmodels/a;

    check-cast p1, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;

    iget-object v1, p0, Lcom/twitter/android/moments/viewmodels/r;->a:Lcom/twitter/util/object/c;

    iget-object v2, p0, Lcom/twitter/android/moments/viewmodels/r;->b:Lcom/twitter/util/object/c;

    invoke-direct {v0, p1, v1, v2}, Lcom/twitter/android/moments/viewmodels/a;-><init>(Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;Lcom/twitter/util/object/c;Lcom/twitter/util/object/c;)V

    goto :goto_0

    .line 64
    :cond_2
    instance-of v0, p1, Lcom/twitter/model/moments/viewmodels/ac;

    if-eqz v0, :cond_3

    .line 65
    new-instance v0, Lcom/twitter/android/moments/viewmodels/a;

    check-cast p1, Lcom/twitter/model/moments/viewmodels/ac;

    iget-object v1, p0, Lcom/twitter/android/moments/viewmodels/r;->a:Lcom/twitter/util/object/c;

    iget-object v2, p0, Lcom/twitter/android/moments/viewmodels/r;->b:Lcom/twitter/util/object/c;

    invoke-direct {v0, p1, v1, v2}, Lcom/twitter/android/moments/viewmodels/a;-><init>(Lcom/twitter/model/moments/viewmodels/ac;Lcom/twitter/util/object/c;Lcom/twitter/util/object/c;)V

    goto :goto_0

    .line 68
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized moment page type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/viewmodels/r;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/android/moments/viewmodels/q;

    move-result-object v0

    return-object v0
.end method
