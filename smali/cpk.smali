.class public Lcpk;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcpk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/twitter/util/math/Size;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcpm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcpm;-><init>(Lcpl;)V

    sput-object v0, Lcpk;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/util/math/Size;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcpk;->b:Lcom/twitter/util/math/Size;

    .line 27
    iput-object p2, p0, Lcpk;->c:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcpk;->d:Ljava/lang/String;

    .line 29
    return-void
.end method
