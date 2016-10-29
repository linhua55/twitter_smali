.class public Lcom/twitter/android/moments/ui/maker/navigation/aq;
.super Ljava/lang/Object;
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
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/twitter/android/moments/ui/maker/navigation/ap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS1;"
        }
    .end annotation
.end field

.field public final b:Lcom/twitter/android/moments/ui/maker/navigation/ap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS2;"
        }
    .end annotation
.end field

.field public final c:Lcom/twitter/android/moments/ui/maker/navigation/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/navigation/ar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/maker/navigation/ar",
            "<TS1;TS2;TTS;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/twitter/android/moments/ui/maker/navigation/ar;->a(Lcom/twitter/android/moments/ui/maker/navigation/ar;)Lcom/twitter/android/moments/ui/maker/navigation/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/aq;->a:Lcom/twitter/android/moments/ui/maker/navigation/ap;

    .line 31
    invoke-static {p1}, Lcom/twitter/android/moments/ui/maker/navigation/ar;->b(Lcom/twitter/android/moments/ui/maker/navigation/ar;)Lcom/twitter/android/moments/ui/maker/navigation/ap;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/navigation/ap;

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/aq;->b:Lcom/twitter/android/moments/ui/maker/navigation/ap;

    .line 32
    invoke-static {p1}, Lcom/twitter/android/moments/ui/maker/navigation/ar;->c(Lcom/twitter/android/moments/ui/maker/navigation/ar;)Lcom/twitter/android/moments/ui/maker/navigation/au;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/navigation/au;

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/aq;->c:Lcom/twitter/android/moments/ui/maker/navigation/au;

    .line 33
    return-void
.end method

.method public static a()Lcom/twitter/android/moments/ui/maker/navigation/ar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S1::",
            "Lcom/twitter/android/moments/ui/maker/navigation/ap;",
            "S2::",
            "Lcom/twitter/android/moments/ui/maker/navigation/ap;",
            "TS::",
            "Lcom/twitter/android/moments/ui/maker/navigation/au;",
            ">()",
            "Lcom/twitter/android/moments/ui/maker/navigation/ar",
            "<TS1;TS2;TTS;>;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/twitter/android/moments/ui/maker/navigation/ar;

    invoke-direct {v0}, Lcom/twitter/android/moments/ui/maker/navigation/ar;-><init>()V

    return-object v0
.end method
