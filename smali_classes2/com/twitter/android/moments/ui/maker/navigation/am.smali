.class public Lcom/twitter/android/moments/ui/maker/navigation/am;
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/maker/navigation/aq;)Lcom/twitter/android/moments/ui/maker/navigation/as;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p1, Lcom/twitter/android/moments/ui/maker/navigation/aq;->a:Lcom/twitter/android/moments/ui/maker/navigation/ap;

    instance-of v0, v0, Lcom/twitter/android/moments/ui/maker/navigation/c;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/twitter/android/moments/ui/maker/navigation/aq;->b:Lcom/twitter/android/moments/ui/maker/navigation/ap;

    instance-of v0, v0, Lcom/twitter/android/moments/ui/maker/navigation/aa;

    if-eqz v0, :cond_0

    .line 16
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/navigation/aq;

    .line 14
    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/navigation/f;->a(Lcom/twitter/android/moments/ui/maker/navigation/aq;)Lcom/twitter/android/moments/ui/maker/navigation/as;

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p1, Lcom/twitter/android/moments/ui/maker/navigation/aq;->a:Lcom/twitter/android/moments/ui/maker/navigation/ap;

    instance-of v0, v0, Lcom/twitter/android/moments/ui/maker/navigation/aa;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/twitter/android/moments/ui/maker/navigation/aq;->b:Lcom/twitter/android/moments/ui/maker/navigation/ap;

    instance-of v0, v0, Lcom/twitter/android/moments/ui/maker/navigation/c;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/twitter/android/moments/ui/maker/navigation/aq;->c:Lcom/twitter/android/moments/ui/maker/navigation/au;

    instance-of v0, v0, Lcom/twitter/android/moments/ui/maker/navigation/ae;

    if-eqz v0, :cond_1

    .line 23
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/navigation/aq;

    .line 21
    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/navigation/ad;->a(Lcom/twitter/android/moments/ui/maker/navigation/aq;)Lcom/twitter/android/moments/ui/maker/navigation/as;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_1
    invoke-static {p1}, Lcom/twitter/android/moments/ui/maker/navigation/x;->a(Lcom/twitter/android/moments/ui/maker/navigation/aq;)Lcom/twitter/android/moments/ui/maker/navigation/as;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    check-cast p1, Lcom/twitter/android/moments/ui/maker/navigation/aq;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/navigation/am;->a(Lcom/twitter/android/moments/ui/maker/navigation/aq;)Lcom/twitter/android/moments/ui/maker/navigation/as;

    move-result-object v0

    return-object v0
.end method
