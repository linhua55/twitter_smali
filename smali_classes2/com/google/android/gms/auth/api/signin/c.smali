.class public final Lcom/google/android/gms/auth/api/signin/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Landroid/accounts/Account;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/c;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/auth/api/signin/c;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/c;->a:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->c:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Lcom/google/android/gms/auth/api/signin/c;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/c;->a:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->a:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 9

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/c;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/c;->f:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/c;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/c;->a()Lcom/google/android/gms/auth/api/signin/c;

    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/c;->a:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/c;->f:Landroid/accounts/Account;

    iget-boolean v3, p0, Lcom/google/android/gms/auth/api/signin/c;->d:Z

    iget-boolean v4, p0, Lcom/google/android/gms/auth/api/signin/c;->b:Z

    iget-boolean v5, p0, Lcom/google/android/gms/auth/api/signin/c;->c:Z

    iget-object v6, p0, Lcom/google/android/gms/auth/api/signin/c;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/auth/api/signin/c;->g:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(Ljava/util/Set;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/b;)V

    return-object v0
.end method
