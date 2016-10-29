.class public Lcom/twitter/model/stratostore/b;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/twitter/model/media/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/twitter/model/media/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/twitter/model/stratostore/b;

    invoke-direct {v0}, Lcom/twitter/model/stratostore/b;-><init>()V

    sput-object v0, Lcom/twitter/model/stratostore/b;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/media/a;Lcom/twitter/model/media/a;)I
    .locals 2

    .prologue
    .line 26
    iget v0, p1, Lcom/twitter/model/media/a;->b:F

    iget v1, p2, Lcom/twitter/model/media/a;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/twitter/model/media/a;->b:F

    iget v1, p2, Lcom/twitter/model/media/a;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 21
    check-cast p1, Lcom/twitter/model/media/a;

    check-cast p2, Lcom/twitter/model/media/a;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/stratostore/b;->a(Lcom/twitter/model/media/a;Lcom/twitter/model/media/a;)I

    move-result v0

    return v0
.end method
