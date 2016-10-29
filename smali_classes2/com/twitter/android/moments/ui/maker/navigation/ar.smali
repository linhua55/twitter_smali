.class public Lcom/twitter/android/moments/ui/maker/navigation/ar;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S1::",
        "Lcom/twitter/android/moments/ui/maker/navigation/ap;",
        "S2::",
        "Lcom/twitter/android/moments/ui/maker/navigation/ap;",
        "TS::",
        "Lcom/twitter/android/moments/ui/maker/navigation/au;",
        ">",
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/android/moments/ui/maker/navigation/aq",
        "<TS1;TS2;TTS;>;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/twitter/android/moments/ui/maker/navigation/ap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS1;"
        }
    .end annotation
.end field

.field private b:Lcom/twitter/android/moments/ui/maker/navigation/ap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS2;"
        }
    .end annotation
.end field

.field private c:Lcom/twitter/android/moments/ui/maker/navigation/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/navigation/ar;)Lcom/twitter/android/moments/ui/maker/navigation/ap;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/ar;->a:Lcom/twitter/android/moments/ui/maker/navigation/ap;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/maker/navigation/ar;)Lcom/twitter/android/moments/ui/maker/navigation/ap;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/ar;->b:Lcom/twitter/android/moments/ui/maker/navigation/ap;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/moments/ui/maker/navigation/ar;)Lcom/twitter/android/moments/ui/maker/navigation/au;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/ar;->c:Lcom/twitter/android/moments/ui/maker/navigation/au;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/maker/navigation/ap;)Lcom/twitter/android/moments/ui/maker/navigation/ar;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS1;)",
            "Lcom/twitter/android/moments/ui/maker/navigation/ar",
            "<TS1;TS2;TTS;>;"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/ar;->a:Lcom/twitter/android/moments/ui/maker/navigation/ap;

    .line 44
    return-object p0
.end method

.method public a(Lcom/twitter/android/moments/ui/maker/navigation/au;)Lcom/twitter/android/moments/ui/maker/navigation/ar;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTS;)",
            "Lcom/twitter/android/moments/ui/maker/navigation/ar",
            "<TS1;TS2;TTS;>;"
        }
    .end annotation

    .prologue
    .line 55
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/ar;->c:Lcom/twitter/android/moments/ui/maker/navigation/au;

    .line 56
    return-object p0
.end method

.method public b(Lcom/twitter/android/moments/ui/maker/navigation/ap;)Lcom/twitter/android/moments/ui/maker/navigation/ar;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS2;)",
            "Lcom/twitter/android/moments/ui/maker/navigation/ar",
            "<TS1;TS2;TTS;>;"
        }
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/ar;->b:Lcom/twitter/android/moments/ui/maker/navigation/ap;

    .line 50
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/navigation/ar;->d()Lcom/twitter/android/moments/ui/maker/navigation/aq;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/twitter/android/moments/ui/maker/navigation/aq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/android/moments/ui/maker/navigation/aq",
            "<TS1;TS2;TTS;>;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/twitter/android/moments/ui/maker/navigation/aq;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/maker/navigation/aq;-><init>(Lcom/twitter/android/moments/ui/maker/navigation/ar;)V

    return-object v0
.end method
