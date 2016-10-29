.class public Lcom/twitter/model/media/a;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/media/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:F

.field public final c:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/twitter/model/media/b;->a:Lcom/twitter/model/media/b;

    sput-object v0, Lcom/twitter/model/media/a;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/twitter/model/media/a;->b:F

    .line 28
    iput p2, p0, Lcom/twitter/model/media/a;->c:I

    .line 29
    return-void
.end method

.method public constructor <init>(FIII)V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0xff

    invoke-static {v0, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/twitter/model/media/a;-><init>(FI)V

    .line 24
    return-void
.end method
