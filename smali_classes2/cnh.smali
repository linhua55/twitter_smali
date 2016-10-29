.class public Lcnh;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcnh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcnk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcnk;-><init>(Lcni;)V

    sput-object v0, Lcnh;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(Lcnj;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcnj;->a(Lcnj;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcnh;->b:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcnj;->b(Lcnj;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcnh;->c:Ljava/lang/Object;

    .line 35
    invoke-static {p1}, Lcnj;->c(Lcnj;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcnh;->d:Ljava/util/List;

    .line 36
    invoke-static {p1}, Lcnj;->d(Lcnj;)Z

    move-result v0

    iput-boolean v0, p0, Lcnh;->e:Z

    .line 37
    return-void
.end method
