.class Lcom/twitter/android/people/an;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/people/y;


# instance fields
.field final synthetic a:Lcom/twitter/android/people/am;


# direct methods
.method constructor <init>(Lcom/twitter/android/people/am;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/twitter/android/people/an;->a:Lcom/twitter/android/people/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/twitter/android/people/an;->a:Lcom/twitter/android/people/am;

    invoke-virtual {v0}, Lcom/twitter/android/people/am;->m()V

    .line 47
    return-void
.end method

.method public a(Lcmf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/android/people/adapters/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/people/an;->a:Lcom/twitter/android/people/am;

    invoke-virtual {v0, p1}, Lcom/twitter/android/people/am;->a(Lcmf;)V

    .line 42
    return-void
.end method
