.class Lcom/twitter/android/moments/viewmodels/g;
.super Lcom/twitter/android/moments/viewmodels/j;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/viewmodels/b;

.field private final d:Lcom/twitter/model/moments/maker/MomentEditOperation;

.field private final e:Lcom/twitter/model/moments/viewmodels/h;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/MomentEditOperation;Lcom/twitter/model/moments/viewmodels/h;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/twitter/android/moments/viewmodels/g;->a:Lcom/twitter/android/moments/viewmodels/b;

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/moments/viewmodels/j;-><init>(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/w;)V

    .line 135
    iput-object p2, p0, Lcom/twitter/android/moments/viewmodels/g;->d:Lcom/twitter/model/moments/maker/MomentEditOperation;

    .line 136
    iput-object p3, p0, Lcom/twitter/android/moments/viewmodels/g;->e:Lcom/twitter/model/moments/viewmodels/h;

    .line 137
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/g;->d:Lcom/twitter/model/moments/maker/MomentEditOperation;

    iget-object v0, v0, Lcom/twitter/model/moments/maker/MomentEditOperation;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/g;->a:Lcom/twitter/android/moments/viewmodels/b;

    iget-object v0, v0, Lcom/twitter/android/moments/viewmodels/b;->a:Lcom/twitter/model/moments/af;

    iget-object v1, p0, Lcom/twitter/android/moments/viewmodels/g;->d:Lcom/twitter/model/moments/maker/MomentEditOperation;

    iget-object v1, v1, Lcom/twitter/model/moments/maker/MomentEditOperation;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->a(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/g;->d:Lcom/twitter/model/moments/maker/MomentEditOperation;

    iget-object v0, v0, Lcom/twitter/model/moments/maker/MomentEditOperation;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/g;->a:Lcom/twitter/android/moments/viewmodels/b;

    iget-object v0, v0, Lcom/twitter/android/moments/viewmodels/b;->a:Lcom/twitter/model/moments/af;

    iget-object v1, p0, Lcom/twitter/android/moments/viewmodels/g;->d:Lcom/twitter/model/moments/maker/MomentEditOperation;

    iget-object v1, v1, Lcom/twitter/model/moments/maker/MomentEditOperation;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->f(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/g;->d:Lcom/twitter/model/moments/maker/MomentEditOperation;

    iget-object v0, v0, Lcom/twitter/model/moments/maker/MomentEditOperation;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/g;->a:Lcom/twitter/android/moments/viewmodels/b;

    iget-object v0, v0, Lcom/twitter/android/moments/viewmodels/b;->a:Lcom/twitter/model/moments/af;

    iget-object v1, p0, Lcom/twitter/android/moments/viewmodels/g;->d:Lcom/twitter/model/moments/maker/MomentEditOperation;

    iget-object v1, v1, Lcom/twitter/model/moments/maker/MomentEditOperation;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->c(Z)Lcom/twitter/model/moments/af;

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/g;->e:Lcom/twitter/model/moments/viewmodels/h;

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/g;->a:Lcom/twitter/android/moments/viewmodels/b;

    iget-object v1, p0, Lcom/twitter/android/moments/viewmodels/g;->e:Lcom/twitter/model/moments/viewmodels/h;

    sget-object v2, Lcom/twitter/model/moments/MomentPageDisplayMode;->a:Lcom/twitter/model/moments/MomentPageDisplayMode;

    invoke-interface {v1, v2}, Lcom/twitter/model/moments/viewmodels/h;->a(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/moments/viewmodels/b;->a(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 152
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/g;->a:Lcom/twitter/android/moments/viewmodels/b;

    iget-object v1, p0, Lcom/twitter/android/moments/viewmodels/g;->e:Lcom/twitter/model/moments/viewmodels/h;

    sget-object v2, Lcom/twitter/model/moments/MomentPageDisplayMode;->c:Lcom/twitter/model/moments/MomentPageDisplayMode;

    invoke-interface {v1, v2}, Lcom/twitter/model/moments/viewmodels/h;->a(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/moments/viewmodels/b;->b(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/g;->a:Lcom/twitter/android/moments/viewmodels/b;

    invoke-static {v0}, Lcom/twitter/android/moments/viewmodels/b;->a(Lcom/twitter/android/moments/viewmodels/b;)Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/g;->a:Lcom/twitter/android/moments/viewmodels/b;

    invoke-static {v0}, Lcom/twitter/android/moments/viewmodels/b;->b(Lcom/twitter/android/moments/viewmodels/b;)Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 155
    iget-object v1, p0, Lcom/twitter/android/moments/viewmodels/g;->a:Lcom/twitter/android/moments/viewmodels/b;

    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/g;->a:Lcom/twitter/android/moments/viewmodels/b;

    invoke-static {v0}, Lcom/twitter/android/moments/viewmodels/b;->a(Lcom/twitter/android/moments/viewmodels/b;)Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->o()Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/g;->a:Lcom/twitter/android/moments/viewmodels/b;

    iget-object v0, v0, Lcom/twitter/android/moments/viewmodels/b;->a:Lcom/twitter/model/moments/af;

    invoke-virtual {v0}, Lcom/twitter/model/moments/af;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ad;

    invoke-virtual {v2, v0}, Lcom/twitter/model/moments/viewmodels/l;->a(Lcom/twitter/model/moments/ad;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/l;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-static {v1, v0}, Lcom/twitter/android/moments/viewmodels/b;->a(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 156
    iget-object v1, p0, Lcom/twitter/android/moments/viewmodels/g;->a:Lcom/twitter/android/moments/viewmodels/b;

    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/g;->a:Lcom/twitter/android/moments/viewmodels/b;

    invoke-static {v0}, Lcom/twitter/android/moments/viewmodels/b;->b(Lcom/twitter/android/moments/viewmodels/b;)Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->o()Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/g;->a:Lcom/twitter/android/moments/viewmodels/b;

    iget-object v0, v0, Lcom/twitter/android/moments/viewmodels/b;->a:Lcom/twitter/model/moments/af;

    invoke-virtual {v0}, Lcom/twitter/model/moments/af;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ad;

    invoke-virtual {v2, v0}, Lcom/twitter/model/moments/viewmodels/l;->a(Lcom/twitter/model/moments/ad;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/l;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-static {v1, v0}, Lcom/twitter/android/moments/viewmodels/b;->b(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 158
    :cond_4
    return-void
.end method
