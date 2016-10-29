.class Lamq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lamr;


# instance fields
.field final synthetic a:Lamp;


# direct methods
.method constructor <init>(Lamp;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lamq;->a:Lamp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lamq;->a:Lamp;

    invoke-static {v0}, Lamp;->a(Lamp;)Lcom/twitter/android/moments/data/maker/a;

    move-result-object v1

    new-instance v0, Lcom/twitter/model/moments/maker/l;

    invoke-direct {v0}, Lcom/twitter/model/moments/maker/l;-><init>()V

    .line 45
    invoke-virtual {v0, p1}, Lcom/twitter/model/moments/maker/l;->a(Ljava/lang/String;)Lcom/twitter/model/moments/maker/l;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/twitter/model/moments/maker/l;->b(Ljava/lang/String;)Lcom/twitter/model/moments/maker/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/maker/l;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/w;

    .line 44
    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/data/maker/a;->a(Lcom/twitter/model/moments/maker/w;)V

    .line 46
    iget-object v0, p0, Lamq;->a:Lamp;

    invoke-static {v0}, Lamp;->a(Lamp;)Lcom/twitter/android/moments/data/maker/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/maker/a;->c()Lrx/w;

    move-result-object v0

    invoke-virtual {v0}, Lrx/w;->a()Lrx/ap;

    .line 47
    iget-object v0, p0, Lamq;->a:Lamp;

    invoke-static {v0}, Lamp;->b(Lamp;)Lcom/twitter/android/moments/ui/maker/navigation/ao;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/maker/navigation/ao;->a()V

    .line 48
    return-void
.end method
