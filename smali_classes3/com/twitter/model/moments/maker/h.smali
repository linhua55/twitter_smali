.class public Lcom/twitter/model/moments/maker/h;
.super Lcom/twitter/model/moments/maker/ao;
.source "Twttr"

# interfaces
.implements Lcom/twitter/model/moments/maker/an;


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/moments/maker/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/twitter/model/moments/maker/k;

    invoke-direct {v0}, Lcom/twitter/model/moments/maker/k;-><init>()V

    sput-object v0, Lcom/twitter/model/moments/maker/h;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/moments/maker/j;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/maker/ao;-><init>(Lcom/twitter/model/moments/maker/ap;)V

    .line 14
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/moments/maker/j;Lcom/twitter/model/moments/maker/i;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/maker/h;-><init>(Lcom/twitter/model/moments/maker/j;)V

    return-void
.end method
