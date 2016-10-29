.class public Lcpu;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcpu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:F

.field public final c:Lcpk;

.field public final d:Lcpk;

.field public final e:Lcpk;

.field public final f:Lcpk;

.field public final g:Lcpk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcpw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcpw;-><init>(Lcpv;)V

    sput-object v0, Lcpu;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(Lcpk;Lcpk;Lcpk;Lcpk;Lcpk;F)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcpu;->c:Lcpk;

    .line 33
    iput-object p2, p0, Lcpu;->d:Lcpk;

    .line 34
    iput-object p3, p0, Lcpu;->e:Lcpk;

    .line 35
    iput-object p4, p0, Lcpu;->f:Lcpk;

    .line 36
    iput-object p5, p0, Lcpu;->g:Lcpk;

    .line 37
    iput p6, p0, Lcpu;->b:F

    .line 38
    return-void
.end method
