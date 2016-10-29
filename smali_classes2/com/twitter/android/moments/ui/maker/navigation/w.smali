.class final Lcom/twitter/android/moments/ui/maker/navigation/w;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/c",
        "<",
        "Lcom/twitter/android/moments/ui/maker/navigation/aq;",
        "Lcom/twitter/android/moments/ui/maker/navigation/as;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/maker/navigation/aq;)Lcom/twitter/android/moments/ui/maker/navigation/as;
    .locals 1

    .prologue
    .line 16
    invoke-static {p1}, Lcom/twitter/android/moments/ui/maker/navigation/x;->a(Lcom/twitter/android/moments/ui/maker/navigation/aq;)Lcom/twitter/android/moments/ui/maker/navigation/as;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcom/twitter/android/moments/ui/maker/navigation/aq;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/navigation/w;->a(Lcom/twitter/android/moments/ui/maker/navigation/aq;)Lcom/twitter/android/moments/ui/maker/navigation/as;

    move-result-object v0

    return-object v0
.end method
