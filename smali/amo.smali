.class Lamo;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lasn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lasn",
        "<",
        "Lamy;",
        "Lasm",
        "<",
        "Lamy;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Lcom/twitter/android/moments/ui/maker/navigation/ao;

.field private final c:Lcom/twitter/android/moments/ui/maker/aq;

.field private d:Lcom/twitter/android/moments/ui/maker/bm;


# direct methods
.method constructor <init>(Landroid/view/LayoutInflater;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/ui/maker/aq;Lcom/twitter/android/moments/ui/maker/bm;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lamo;->a:Landroid/view/LayoutInflater;

    .line 160
    iput-object p2, p0, Lamo;->b:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    .line 161
    iput-object p3, p0, Lamo;->c:Lcom/twitter/android/moments/ui/maker/aq;

    .line 162
    iput-object p4, p0, Lamo;->d:Lcom/twitter/android/moments/ui/maker/bm;

    .line 163
    return-void
.end method


# virtual methods
.method public a(Lamy;)I
    .locals 1

    .prologue
    .line 190
    instance-of v0, p1, Lamx;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 144
    check-cast p1, Lamy;

    invoke-virtual {p0, p1}, Lamo;->a(Lamy;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/view/ViewGroup;Lasl;I)Lasm;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lasl;",
            "I)",
            "Lasm",
            "<",
            "Lamy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    packed-switch p3, :pswitch_data_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown view type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :pswitch_0
    iget-object v0, p0, Lamo;->a:Landroid/view/LayoutInflater;

    .line 172
    invoke-static {v0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/k;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/k;

    move-result-object v1

    .line 174
    new-instance v0, Lame;

    iget-object v2, p0, Lamo;->c:Lcom/twitter/android/moments/ui/maker/aq;

    iget-object v3, p0, Lamo;->d:Lcom/twitter/android/moments/ui/maker/bm;

    iget-object v4, p0, Lamo;->b:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    invoke-direct {v0, v1, v2, v3, v4}, Lame;-><init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/k;Lcom/twitter/android/moments/ui/maker/aq;Lcom/twitter/android/moments/ui/maker/bm;Lcom/twitter/android/moments/ui/maker/navigation/ao;)V

    .line 180
    :goto_0
    return-object v0

    .line 178
    :pswitch_1
    iget-object v0, p0, Lamo;->a:Landroid/view/LayoutInflater;

    .line 179
    invoke-static {v0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/l;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/l;

    move-result-object v1

    .line 180
    new-instance v0, Lamh;

    iget-object v2, p0, Lamo;->b:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    iget-object v3, p0, Lamo;->c:Lcom/twitter/android/moments/ui/maker/aq;

    invoke-direct {v0, v2, v1, v3}, Lamh;-><init>(Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/ui/maker/viewdelegate/l;Lcom/twitter/android/moments/ui/maker/aq;)V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
