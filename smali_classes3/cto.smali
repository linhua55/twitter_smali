.class public Lcto;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lctt;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lctm;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lctm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lctt;",
            ">;",
            "Lctm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcto;->a:Ljava/lang/String;

    .line 28
    invoke-static {p2}, Lcom/twitter/util/collection/r;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcto;->b:Ljava/util/List;

    .line 29
    iput-object p3, p0, Lcto;->c:Lctm;

    .line 30
    return-void
.end method
