.class public Lcom/twitter/model/moments/maker/a;
.super Lcom/twitter/model/moments/maker/ac;
.source "Twttr"

# interfaces
.implements Lcom/twitter/model/moments/maker/an;


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/moments/maker/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/twitter/model/moments/maker/c;

    invoke-direct {v0}, Lcom/twitter/model/moments/maker/c;-><init>()V

    sput-object v0, Lcom/twitter/model/moments/maker/a;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/moments/maker/d;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/maker/ac;-><init>(Lcom/twitter/model/moments/maker/ad;)V

    .line 15
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/moments/maker/d;Lcom/twitter/model/moments/maker/b;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/maker/a;-><init>(Lcom/twitter/model/moments/maker/d;)V

    return-void
.end method
