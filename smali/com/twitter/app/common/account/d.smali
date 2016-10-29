.class public Lcom/twitter/app/common/account/d;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/twitter/app/common/account/d;


# instance fields
.field private final c:Landroid/accounts/AccountManager;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/twitter/app/common/account/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/twitter/app/common/account/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/app/common/account/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/AccountManager;Ljava/lang/String;Lcom/twitter/app/common/account/f;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/twitter/app/common/account/d;->c:Landroid/accounts/AccountManager;

    .line 39
    iput-object p2, p0, Lcom/twitter/app/common/account/d;->d:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/twitter/app/common/account/d;->e:Lcom/twitter/app/common/account/f;

    .line 41
    return-void
.end method

.method private a(Lcom/twitter/app/common/account/a;)Lcom/twitter/app/common/account/a;
    .locals 6

    .prologue
    .line 168
    iget-object v0, p0, Lcom/twitter/app/common/account/d;->e:Lcom/twitter/app/common/account/f;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p1}, Lcom/twitter/app/common/account/a;->e()I

    move-result v0

    .line 170
    iget-object v1, p0, Lcom/twitter/app/common/account/d;->e:Lcom/twitter/app/common/account/f;

    invoke-interface {v1}, Lcom/twitter/app/common/account/f;->a()I

    move-result v1

    .line 171
    if-ge v0, v1, :cond_0

    .line 172
    iget-object v2, p0, Lcom/twitter/app/common/account/d;->c:Landroid/accounts/AccountManager;

    monitor-enter v2

    .line 173
    :try_start_0
    invoke-virtual {p1}, Lcom/twitter/app/common/account/a;->e()I

    move-result v3

    .line 174
    if-lt v3, v1, :cond_1

    .line 176
    monitor-exit v2

    .line 186
    :cond_0
    :goto_0
    return-object p1

    .line 178
    :cond_1
    iget-object v3, p0, Lcom/twitter/app/common/account/d;->e:Lcom/twitter/app/common/account/f;

    invoke-interface {v3, p1, v0, v1}, Lcom/twitter/app/common/account/f;->a(Lcom/twitter/app/common/account/a;II)V

    .line 179
    invoke-virtual {p1}, Lcom/twitter/app/common/account/a;->e()I

    move-result v3

    .line 180
    if-ne v3, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Expected AppAccount version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " after upgrade, but instead got version "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/util/h;->a(ZLjava/lang/String;)Z

    .line 183
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 180
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Lcom/twitter/app/common/account/UserIdentifier;)Lcom/twitter/app/common/account/a;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 191
    new-instance v3, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/twitter/app/common/account/d;->d:Ljava/lang/String;

    invoke-direct {v3, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v1, Lcom/twitter/app/common/account/a;

    iget-object v2, p0, Lcom/twitter/app/common/account/d;->c:Landroid/accounts/AccountManager;

    invoke-direct {v1, v2, v3}, Lcom/twitter/app/common/account/a;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;)V

    .line 193
    iget-object v2, p0, Lcom/twitter/app/common/account/d;->c:Landroid/accounts/AccountManager;

    invoke-virtual {v2, v3, v0, v0}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    .line 197
    if-nez v2, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x16

    if-lt v4, v5, :cond_0

    iget-object v4, p0, Lcom/twitter/app/common/account/d;->c:Landroid/accounts/AccountManager;

    iget-object v5, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 201
    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/twitter/app/common/account/d;->c:Landroid/accounts/AccountManager;

    .line 202
    invoke-virtual {v4, v3}, Landroid/accounts/AccountManager;->removeAccountExplicitly(Landroid/accounts/Account;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    sget-object v2, Lcom/twitter/app/common/account/d;->a:Ljava/lang/String;

    const-string/jumbo v4, "hit Android N bug, trying to add account again"

    const-string/jumbo v5, "ANDROID-19374"

    invoke-static {v2, v4, v5}, Lcjv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/twitter/app/common/account/d;->c:Landroid/accounts/AccountManager;

    invoke-virtual {v2, v3, v0, v0}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    .line 205
    if-nez v2, :cond_0

    .line 206
    sget-object v3, Lcom/twitter/app/common/account/d;->a:Ljava/lang/String;

    const-string/jumbo v4, "hit Android N bug, failed again, could not add account"

    const-string/jumbo v5, "ANDROID-19374"

    invoke-static {v3, v4, v5}, Lcjv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_0
    if-nez v2, :cond_1

    .line 219
    :goto_0
    return-object v0

    .line 213
    :cond_1
    invoke-virtual {v1, p2}, Lcom/twitter/app/common/account/a;->a(Lcom/twitter/app/common/account/UserIdentifier;)V

    .line 215
    invoke-virtual {v1, v0}, Lcom/twitter/app/common/account/a;->b(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/twitter/app/common/account/d;->e:Lcom/twitter/app/common/account/f;

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/twitter/app/common/account/d;->e:Lcom/twitter/app/common/account/f;

    invoke-interface {v0}, Lcom/twitter/app/common/account/f;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/twitter/app/common/account/a;->a(I)V

    :cond_2
    move-object v0, v1

    .line 219
    goto :goto_0
.end method

.method public static a()Lcom/twitter/app/common/account/d;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/twitter/app/common/account/d;->b:Lcom/twitter/app/common/account/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twitter/app/common/account/d;->b:Lcom/twitter/app/common/account/d;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/twitter/app/common/app/a;->a()Lcom/twitter/app/common/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/app/a;->i()Lcom/twitter/app/common/account/d;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/accounts/Account;)Lcom/twitter/app/common/account/a;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/twitter/app/common/account/a;

    iget-object v1, p0, Lcom/twitter/app/common/account/d;->c:Landroid/accounts/AccountManager;

    invoke-direct {v0, v1, p1}, Lcom/twitter/app/common/account/a;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;)V

    invoke-direct {p0, v0}, Lcom/twitter/app/common/account/d;->a(Lcom/twitter/app/common/account/a;)Lcom/twitter/app/common/account/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/app/common/account/UserIdentifier;)Lcom/twitter/app/common/account/a;
    .locals 5

    .prologue
    .line 66
    iget-object v0, p0, Lcom/twitter/app/common/account/d;->c:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/twitter/app/common/account/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 67
    invoke-virtual {p0, v0}, Lcom/twitter/app/common/account/d;->a(Landroid/accounts/Account;)Lcom/twitter/app/common/account/a;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/twitter/app/common/account/UserIdentifier;->a(Lcom/twitter/app/common/account/UserIdentifier;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    :goto_1
    return-object v0

    .line 66
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/twitter/app/common/account/UserIdentifier;Ljava/lang/String;)Lcom/twitter/app/common/account/a;
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/twitter/app/common/account/d;->a(Lcom/twitter/app/common/account/UserIdentifier;)Lcom/twitter/app/common/account/a;

    move-result-object v0

    .line 113
    if-nez v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/twitter/app/common/account/d;->c:Landroid/accounts/AccountManager;

    monitor-enter v1

    .line 115
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/twitter/app/common/account/d;->a(Lcom/twitter/app/common/account/UserIdentifier;)Lcom/twitter/app/common/account/a;

    move-result-object v0

    .line 116
    if-nez v0, :cond_1

    .line 117
    invoke-direct {p0, p2, p1}, Lcom/twitter/app/common/account/d;->a(Ljava/lang/String;Lcom/twitter/app/common/account/UserIdentifier;)Lcom/twitter/app/common/account/a;

    move-result-object v0

    monitor-exit v1

    .line 122
    :cond_0
    :goto_0
    return-object v0

    .line 119
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/twitter/app/common/account/a;Ljava/lang/String;Lcom/twitter/app/common/account/e;)Lcom/twitter/app/common/account/a;
    .locals 2

    .prologue
    .line 153
    iget-object v1, p0, Lcom/twitter/app/common/account/d;->c:Landroid/accounts/AccountManager;

    monitor-enter v1

    .line 154
    :try_start_0
    invoke-virtual {p1}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/twitter/app/common/account/d;->a(Ljava/lang/String;Lcom/twitter/app/common/account/UserIdentifier;)Lcom/twitter/app/common/account/a;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_1

    .line 156
    if-eqz p3, :cond_0

    .line 157
    invoke-interface {p3, p1, v0}, Lcom/twitter/app/common/account/e;->a(Lcom/twitter/app/common/account/a;Lcom/twitter/app/common/account/a;)V

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/app/common/account/a;->c()Landroid/accounts/AccountManagerFuture;

    .line 160
    monitor-exit v1

    .line 163
    :goto_0
    return-object v0

    .line 162
    :cond_1
    monitor-exit v1

    .line 163
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/twitter/app/common/account/d;->c:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/twitter/app/common/account/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public b()I
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/twitter/app/common/account/d;->c:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/twitter/app/common/account/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/app/common/account/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/twitter/app/common/account/d;->c:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/twitter/app/common/account/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 93
    array-length v0, v1

    new-array v2, v0, [Lcom/twitter/app/common/account/a;

    .line 94
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 95
    aget-object v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/twitter/app/common/account/d;->a(Landroid/accounts/Account;)Lcom/twitter/app/common/account/a;

    move-result-object v3

    aput-object v3, v2, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {v2}, Lcom/twitter/util/collection/ImmutableList;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
